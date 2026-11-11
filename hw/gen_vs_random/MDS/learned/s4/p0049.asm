.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor bl, -102
and ax, 27170
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], al
and rdx, 0b1111111111111 # instrumentation
xor rax, qword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 751805012
and rcx, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
bt qword ptr [r14 + rcx], rbx
jmp .bb_0.2
.bb_0.2:
test dil, cl
xor cl, sil
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], -38
and rbx, 0b1111111111111 # instrumentation
cmovp rdx, qword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], al
xor rcx, -2
or dil, -71
bts bx, 3
and rdx, 0b1111111111111 # instrumentation
or dil, byte ptr [r14 + rdx]
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], dil
test di, 70
or dl, bl
and rax, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
bt qword ptr [r14 + rax], rsi
and dl, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
