.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], 85
and rsi, 0b1111111111111 # instrumentation
movzx edx, byte ptr [r14 + rsi]
sub al, sil
and rcx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rcx], eax
btc cx, 91
and rsi, 0b1111111111111 # instrumentation
add byte ptr [r14 + rsi], cl
jnz .bb_0.1
jmp .exit_0
.bb_0.1:
neg si
add bl, -64 # instrumentation
cmovnle ecx, edi
lea eax, qword ptr [rbx]
lea edx, qword ptr [rcx + rax]
and rsi, 0b1111111111111 # instrumentation
cmovl rax, qword ptr [r14 + rsi]
lea rdx, qword ptr [rax + rbx + 25]
and rbx, 0b1111111111111 # instrumentation
test word ptr [r14 + rbx], ax
add al, 120 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovnle rax, qword ptr [r14 + rax]
cmp al, 53
and rbx, 0b1111111111111 # instrumentation
cmovs rdx, qword ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
