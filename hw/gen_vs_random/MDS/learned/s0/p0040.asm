.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
xor rdx, qword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
cmovnbe rax, qword ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
or ax, word ptr [r14 + rcx]
and bl, 68
and rbx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rbx], 112
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], sil
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
bt qword ptr [r14 + rdi], rcx
and rbx, 0b1111111111111 # instrumentation
or rax, qword ptr [r14 + rbx]
test al, dl
or dl, -31
test dl, -85
jmp .bb_0.2
.bb_0.2:
bt di, cx
and rdx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rdx], edi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
