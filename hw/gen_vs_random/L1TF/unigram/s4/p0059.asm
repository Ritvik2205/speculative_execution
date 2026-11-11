.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 39 # instrumentation
setle sil
sub rbx, 57
and rdx, 0b1111111111111 # instrumentation
cmovo cx, word ptr [r14 + rdx]
and rax, 0b1111111111000 # instrumentation
lock inc dword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rbx]
xor esi, 68
lea ebx, qword ptr [rdx + rbx + 94]
add cx, bx
jmp .bb_0.1
.bb_0.1:
lea esi, qword ptr [rsi + rcx + 82]
sub rsi, 56
add sil, -36 # instrumentation
and rax, 0b1111111111000 # instrumentation
xchg dword ptr [r14 + rax], esi
xor dl, bl
and rdx, 0b1111111111111 # instrumentation
cmovs si, word ptr [r14 + rdx]
btc bx, cx
mov ebx, 675401645
setno sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
