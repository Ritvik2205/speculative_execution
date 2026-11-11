.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], bl
and rax, 0b1111111111111 # instrumentation
mov dil, byte ptr [r14 + rax]
sbb bl, dl
and rsi, 0b1111111111111 # instrumentation
imul edx, dword ptr [r14 + rsi], 43
or dil, -113
and rbx, 0b1111111111111 # instrumentation
cmovo si, word ptr [r14 + rbx]
or cx, 0b1000000000000000 # instrumentation
bsf di, cx
cmovp ax, di
movsx edi, ax
cmp ecx, edx
and rax, 0b1111111111111 # instrumentation
or word ptr [r14 + rax], 0b1000000000000000 # instrumentation
bsr cx, word ptr [r14 + rax]
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], 36
or cl, -78
lea edi, qword ptr [rsi + rsi + 1]
xor bl, sil
and rdx, 0b1111111111111 # instrumentation
sub word ptr [r14 + rdx], bx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
