.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
and rdx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdx], 66
and al, dl
and rcx, 0b1111111111111 # instrumentation
imul rbx, qword ptr [r14 + rcx], 48
or rbx, 0b1000000000000000000000000000000 # instrumentation
bsr rax, rbx
jp .bb_0.1
jmp .exit_0
.bb_0.1:
add ax, 8031
not rcx
and rsi, 0b1111111111000 # instrumentation
lock neg byte ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
cmp bx, word ptr [r14 + rdx]
add al, 96 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovs rbx, qword ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
cmovnl edi, dword ptr [r14 + rdi]
or cl, -98
or di, 0b1000000000000000 # instrumentation
bsr cx, di
add cl, dl
cmp cx, 19
cmovs ax, si
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
