.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, -101 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovo eax, dword ptr [r14 + rax]
sbb cl, 105
lea dx, qword ptr [rax + rdx]
and rax, 0b1111111111111 # instrumentation
setnl byte ptr [r14 + rax]
cmovnle rdi, rdx
lea edi, qword ptr [rsi]
lea rax, qword ptr [rax + rbx]
or ax, 18658
jns .bb_0.1
jmp .exit_0
.bb_0.1:
add dl, -52 # instrumentation
and rdi, 0b1111111111111 # instrumentation
sbb rdx, qword ptr [r14 + rdi]
cmp bl, bl
bt ecx, eax
and rax, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
btr qword ptr [r14 + rax], rsi
add bl, 4 # instrumentation
and rsi, 0b1111111111111 # instrumentation
setbe byte ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
cmovns si, word ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rbx], dx
and rbx, 0b1111111111111 # instrumentation
and rcx, qword ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
