.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
cmovp di, word ptr [r14 + rsi]
test ax, 13284
and rdi, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rdi], 64
lea edi, qword ptr [rsi + rdi + 54]
lea bx, qword ptr [rax + rdx]
inc cl
and rdi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdi], 0b1000000000000000000000000000000 # instrumentation
bsf edx, dword ptr [r14 + rdi]
cmp rbx, rbx
and rbx, 0b1111111111111 # instrumentation
imul cx, word ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
cmovnz rbx, qword ptr [r14 + rbx]
xor bl, -5
add dl, -10 # instrumentation
cmovns ecx, ebx
and rdx, 0b1111111111111 # instrumentation
mul byte ptr [r14 + rdx]
add al, al
lea edx, qword ptr [rsi + rcx + 80]
xchg cl, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
