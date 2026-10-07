.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dx, -51 
lfence
and rbx, 0b1111111111111 # instrumentation
lfence
sbb cx, word ptr [r14 + rbx] 
lfence
and rbx, 0b1111111111000 # instrumentation
lfence
lock neg byte ptr [r14 + rbx] 
lfence
and rsi, 0b1111111111000 # instrumentation
lfence
lock xor byte ptr [r14 + rsi], dl 
lfence
and al, -99 
lfence
jmp .bb_0.1 
.bb_0.1:
xor al, -127 
lfence
and rsi, 0b1111111111111 # instrumentation
lfence
or byte ptr [r14 + rsi], 51 
lfence
cmp dl, al 
lfence
movzx ebx, dx 
lfence
and rdx, 0b1111111111111 # instrumentation
lfence
test qword ptr [r14 + rdx], rcx 
lfence
and rdi, 0b1111111111111 # instrumentation
lfence
mov dword ptr [r14 + rdi], edi 
lfence
sub dil, 95 
lfence
and rcx, 0b1111111111111 # instrumentation
lfence
cmovnz di, word ptr [r14 + rcx] 
lfence
and rax, 0b1111111111000 # instrumentation
lfence
lock and word ptr [r14 + rax], 101 
lfence
and rdx, 0b1111111111000 # instrumentation
lfence
lock or word ptr [r14 + rdx], -21 
lfence
bt rdx, rsi 
lfence
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit 
.section .data.main
.test_case_exit:nop
