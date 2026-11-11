.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
and byte ptr [r14 + rax], bl
and rcx, 0b1111111111111 # instrumentation
add rdx, qword ptr [r14 + rcx]
mul sil
and rbx, 0b1111111111111 # instrumentation
mov ecx, dword ptr [r14 + rbx]
btr dx, 32
lea ax, qword ptr [rsi + rdi + 96]
jmp .bb_0.1
.bb_0.1:
sub ecx, 5
and rsi, 0b1111111111111 # instrumentation
or cl, byte ptr [r14 + rsi]
or dl, -67
and rsi, 0b1111111111111 # instrumentation
cmovo rdi, qword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
mov di, word ptr [r14 + rbx]
btc ecx, eax
sub rax, rcx
and rbx, 0b1111111111111 # instrumentation
setnz byte ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
add al, byte ptr [r14 + rsi]
and bl, 89
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
