.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rdx], 0
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], al
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 194454182
and rax, 0b1111111111111 # instrumentation
and di, 0b111 # instrumentation
bts word ptr [r14 + rax], di
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
or dl, byte ptr [r14 + rcx]
xor dil, 81
and rax, 0b1111111111111 # instrumentation
and esi, 0b111 # instrumentation
bts dword ptr [r14 + rax], esi
and rcx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rcx], 1782121130
or sil, -49
and rbx, 0b1111111111111 # instrumentation
xor dil, byte ptr [r14 + rbx]
not al
and dl, -73
and dil, -39
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
