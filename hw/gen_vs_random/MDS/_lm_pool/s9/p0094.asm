.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and dx, 3
and rdx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdx], 1626470119
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], al
and rcx, 0b1111111111111 # instrumentation
cmovp esi, dword ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rcx], esi
xor cl, 24
or cl, cl
or ax, -6817
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], sil
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], 6
and al, -114
and rbx, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rbx]
test al, sil
jmp .bb_0.1
.bb_0.1:
jmp .bb_0.2
.bb_0.2:
or dl, al
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
