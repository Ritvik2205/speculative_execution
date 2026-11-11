.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
and qword ptr [r14 + rdi], rcx
add dl, 100 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovle ecx, dword ptr [r14 + rdi]
not cl
and rcx, 0b1111111111111 # instrumentation
imul word ptr [r14 + rcx]
imul ax, bx, 67
and rsi, 0b1111111111000 # instrumentation
lock btc dword ptr [r14 + rsi], 18
and sil, 110
setp dil
and rcx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rcx], 52
and rbx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rbx], si
lea edi, qword ptr [rcx + rax + 39]
bts rcx, 78
add al, -67 # instrumentation
setz dl
and rax, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rax], al
add al, al
bswap rax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
