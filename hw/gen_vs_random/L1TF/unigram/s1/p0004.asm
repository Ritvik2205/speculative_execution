.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
movzx rax, word ptr [r14 + rdx]
and rdx, 0b1111111111000 # instrumentation
lock sub dword ptr [r14 + rdx], 44
lea rbx, qword ptr [rsi + rsi]
setnbe bl
imul al
add dl, -52 # instrumentation
adc cx, 99
xor bl, bl
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rax]
add cl, 55 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovnb ecx, dword ptr [r14 + rdx]
add cl, -72 # instrumentation
cmovp ebx, ebx
and rsi, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rsi], 46
cmovle dx, cx
and cl, cl
add dl, -102 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovnb di, word ptr [r14 + rdx]
add dl, -5 # instrumentation
adc dil, dl
sbb sil, -79
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
