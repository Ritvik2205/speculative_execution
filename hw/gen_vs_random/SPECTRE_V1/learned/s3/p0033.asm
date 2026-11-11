.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rbx], 57
and rax, 0b1111111111111 # instrumentation
add byte ptr [r14 + rax], -128
and al, dl
and rcx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rcx], al
and rbx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rbx], bl
adc al, cl
jnb .bb_0.1
jmp .bb_0.2
.bb_0.1:
add al, 28 # instrumentation
setnz al
and rcx, 0b1111111111111 # instrumentation
dec byte ptr [r14 + rcx]
jnz .bb_0.2
jmp .exit_0
.bb_0.2:
mov dl, dl
btr edi, eax
movzx cx, dil
sub bl, sil
and bl, 46
setnz dil
and rsi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rsi], ecx
and rdi, 0b1111111111111 # instrumentation
add dl, byte ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rsi]
or sil, -27
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
