.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and dl, -73
and rax, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rax], ebx
xor bl, cl
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], dl
and bl, sil
or rcx, 54
and rbx, 0b1111111111111 # instrumentation
cmovnle esi, dword ptr [r14 + rbx]
test ebx, -961564216
and rbx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rbx], cl
and rcx, 0b1111111111111 # instrumentation
and rdi, 0b111 # instrumentation
bt qword ptr [r14 + rcx], rdi
and rcx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rcx], sil
and rax, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
bt qword ptr [r14 + rax], rbx
or dil, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
