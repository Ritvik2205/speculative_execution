.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
setnz cl
and rdi, 0b1111111111111 # instrumentation
cmovnbe di, word ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rdx], sil
and rax, 0b1111111111111 # instrumentation
bts qword ptr [r14 + rax], 51
xor al, cl
sbb dl, dil
and rax, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rax], edi
jmp .bb_0.1
.bb_0.1:
or cl, -78
and rax, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
cmp bl, byte ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rax], 1
add dl, 120 # instrumentation
adc al, 34
and bl, bl
and rbx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rbx], dx
setle sil
setz dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
