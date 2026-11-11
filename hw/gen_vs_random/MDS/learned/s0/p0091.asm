.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rdi], 1
or edi, -88
and rax, 0b1111111111111 # instrumentation
test word ptr [r14 + rax], -14842
xor bl, al
and rax, 0b1111111111111 # instrumentation
or qword ptr [r14 + rax], -119
and dl, al
or al, dil
xor dx, 19
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], 47
or al, -58
or dl, dil
or al, sil
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], dil
test esi, 1857129931
and rbx, 0b1111111111111 # instrumentation
cmovp eax, dword ptr [r14 + rbx]
and dl, -73
xor bl, -61
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
