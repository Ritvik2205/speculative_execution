.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -75 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovbe ax, word ptr [r14 + rbx]
btr di, dx
or dil, dl
and rsi, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rsi]
lea eax, qword ptr [rdi + rcx]
and rcx, 0b1111111111111 # instrumentation
mov di, word ptr [r14 + rcx]
cmp bl, sil
and rax, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rax], 47
add bl, -22 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovle dx, word ptr [r14 + rdx]
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rbx]
lea edi, qword ptr [rcx + rsi]
lea di, qword ptr [rsi + rdi + 46]
not si
lea rbx, qword ptr [rcx + rbx + 44]
cmovnb ecx, ebx
and rdx, 0b1111111111000 # instrumentation
lock neg qword ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
