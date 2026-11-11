.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and al, al
and rax, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rax], ecx
and rdx, 0b1111111111111 # instrumentation
cmovp ebx, dword ptr [r14 + rdx]
not sil
and rdi, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rdi]
and esi, 10
test cl, 62
or al, 37
or al, 74
xor dil, 124
btr edx, ebx
and rcx, 0b1111111111111 # instrumentation
test word ptr [r14 + rcx], 2908
or al, -75
and al, -103
and rdx, 0b1111111111111 # instrumentation
cmovp esi, dword ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
