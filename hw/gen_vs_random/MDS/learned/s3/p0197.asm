.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or al, 30
and rax, 0b1111111111111 # instrumentation
or si, word ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
or ax, word ptr [r14 + rbx]
xor dl, dil
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], dil
and bl, sil
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rdx], 84
or ax, -4210
xor dl, cl
and al, 75
and rdi, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rdi]
xor rax, -404206377
test rax, -708244380
or dl, -8
and rdx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rdx], 0
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
