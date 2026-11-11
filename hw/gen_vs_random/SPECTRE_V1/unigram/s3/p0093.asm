.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 83 # instrumentation
setbe bl
btc di, dx
lea esi, qword ptr [rbx + rbx + 56]
add dl, -125 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovl rdx, qword ptr [r14 + rbx]
test cl, -24
jns .bb_0.1
jmp .exit_0
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], 76
add dl, dl
and rsi, 0b1111111111111 # instrumentation
dec byte ptr [r14 + rsi]
and rdx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rdx], 53
and rbx, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rbx]
cmp ecx, 57
lea dx, qword ptr [rdx]
add al, -39 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovle rdx, qword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rax], sil
inc ebx
and rax, 0b1111111111111 # instrumentation
cmovb si, word ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
