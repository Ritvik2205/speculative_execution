.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rdx], 6
or cl, al
and rax, 0b1111111111111 # instrumentation
or cl, byte ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
and ebx, 0b111 # instrumentation
bts dword ptr [r14 + rax], ebx
xor al, 9
bt ax, cx
and rdi, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
bt qword ptr [r14 + rdi], rcx
jmp .bb_0.1
.bb_0.1:
test bl, dl
jmp .bb_0.2
.bb_0.2:
jmp .bb_0.3
.bb_0.3:
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], dil
and rcx, 0b1111111111111 # instrumentation
and sil, byte ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
and bl, byte ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
or qword ptr [r14 + rax], -119
and rdi, 0b1111111111111 # instrumentation
or cl, byte ptr [r14 + rdi]
bt esi, ecx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
