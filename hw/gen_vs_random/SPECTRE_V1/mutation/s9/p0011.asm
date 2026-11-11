.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or rbx, 0b1000000000000000000000000000000 # instrumentation
bsr rax, rbx
and rcx, 0b1111111111111 # instrumentation
imul rbx, qword ptr [r14 + rcx], 48
and al, dl
and rdx, 0b1111111111111 # instrumentation
and rdx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdx], 66
jp .bb_0.1
jmp .bb_0.2
.bb_0.1:
add cl, dl
and rdi, 0b1111111111111 # instrumentation
cmovnl edi, dword ptr [r14 + rdi]
and rsi, 0b1111111111000 # instrumentation
lock neg byte ptr [r14 + rsi]
not rcx
and rdx, 0b1111111111111 # instrumentation
cmp bx, word ptr [r14 + rdx]
or di, 0b1000000000000000 # instrumentation
bsr cx, di
add al, 96 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovs rbx, qword ptr [r14 + rsi]
cmp cx, 88
add ax, 6980
cmovs ax, si
or cl, -62
jmp .bb_0.2
.bb_0.2:
and rsi, 0b1111111111111 # instrumentation
imul word ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
sub dword ptr [r14 + rax], 1
sub bl, dl
lea eax, qword ptr [rbx + rbx + 18245]
cmp al, 46
and rbx, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rbx], 56
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
