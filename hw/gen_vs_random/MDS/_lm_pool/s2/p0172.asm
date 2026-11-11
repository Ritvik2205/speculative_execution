.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test al, 127
or al, bl
btr cx, di
and rcx, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
bt qword ptr [r14 + rcx], rbx
xor bl, 67
and rbx, 0b1111111111111 # instrumentation
or ax, word ptr [r14 + rbx]
or ecx, edi
jmp .bb_0.1
.bb_0.1:
test cl, -86
and rcx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rcx], 6
xor rax, -773894210
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], al
or cl, 119
test edx, -1561252782
and rax, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rax], dx
and rax, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rax], ebx
bts si, 158
test sil, -96
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
