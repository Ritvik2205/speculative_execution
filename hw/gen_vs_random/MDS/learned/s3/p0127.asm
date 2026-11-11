.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor bl, sil
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], dil
test eax, 424329527
and rsi, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rsi], 5
or al, cl
xor sil, -126
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 751805012
and rbx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rbx], sil
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], al
test ecx, -1843375753
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], cl
and rcx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rcx], rdi
and rdx, 0b1111111111111 # instrumentation
or sil, byte ptr [r14 + rdx]
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
