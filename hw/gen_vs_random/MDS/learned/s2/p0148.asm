.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], cl
and rsi, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rsi], 2
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], dl
and rsi, 0b1111111111111 # instrumentation
cmovp ax, word ptr [r14 + rsi]
and dl, -73
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], al
or cx, 39
and rax, 0b1111111111111 # instrumentation
and edi, 0b111 # instrumentation
bts dword ptr [r14 + rax], edi
test eax, 298249463
or cl, dil
jmp .bb_0.1
.bb_0.1:
xor al, bl
or bl, -52
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
