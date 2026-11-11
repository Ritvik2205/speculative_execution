.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
not sil
cwd
lea eax, qword ptr [rax]
and rax, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rax]
add cl, 77 # instrumentation
sbb ecx, 53
and rdx, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
cmovle rcx, qword ptr [r14 + rsi]
add bx, 31
and rax, 0b1111111111000 # instrumentation
lock inc byte ptr [r14 + rax]
sbb bl, -88
and rsi, 0b1111111111111 # instrumentation
cmovnz rax, qword ptr [r14 + rsi]
and rcx, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rcx], al
bt si, 33
and rax, 0b1111111111000 # instrumentation
lock sbb dword ptr [r14 + rax], 6
cmovnz esi, eax
bswap ecx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
