.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
sets byte ptr [r14 + rbx]
add ebx, 53
imul rbx, rax, 6
cmovo ebx, edi
sub bl, 42
and rcx, 0b1111111111000 # instrumentation
and ebx, 0b111 # instrumentation
lock btr dword ptr [r14 + rcx], ebx
and rdx, 0b1111111111111 # instrumentation
setns byte ptr [r14 + rdx]
xor sil, bl
btc si, 87
cmovp ecx, edx
add cl, -103 # instrumentation
cmovnl rsi, rdx
add cl, -38 # instrumentation
setbe dil
or al, dl
and rsi, 0b1111111111111 # instrumentation
sbb cx, word ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
and edi, 0b111 # instrumentation
bt dword ptr [r14 + rax], edi
add cl, -110 # instrumentation
setbe dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
