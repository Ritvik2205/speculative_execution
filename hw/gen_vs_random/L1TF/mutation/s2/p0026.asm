.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
add sil, byte ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
sub eax, dword ptr [r14 + rsi]
movzx bx, dl
sub dl, 41
and rsi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rsi], -82
and rsi, 0b1111111111111 # instrumentation
cmovl rsi, qword ptr [r14 + rsi]
and rax, 0b1111111111000 # instrumentation
lock sbb dword ptr [r14 + rax], 6
and rdi, 0b1111111111111 # instrumentation
cmovnb esi, dword ptr [r14 + rdi]
jmp .bb_0.1
.bb_0.1:
cbw
and rax, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rax], 7
and rsi, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rsi], 53
sbb al, bl
and rdx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdx], rbx
and rbx, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rbx]
adc rax, 1431457700
jmp .bb_0.2
.bb_0.2:
and rdx, 0b1111111111111 # instrumentation
bts qword ptr [r14 + rdx], 1
sbb sil, -19
and rbx, 0b1111111111111 # instrumentation
mul byte ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
btc qword ptr [r14 + rax], rax
and rbx, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rbx]
and rdi, 0b1111111111000 # instrumentation
xchg dword ptr [r14 + rdi], ebx
and rcx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rcx], -12323
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
