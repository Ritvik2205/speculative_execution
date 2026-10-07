.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dx, -51 
and rbx, 0b1111111111111 # instrumentation
lfence
sbb cx, word ptr [r14 + rbx] 
and rbx, 0b1111111111000 # instrumentation
lfence
lock neg byte ptr [r14 + rbx] 
and rsi, 0b1111111111000 # instrumentation
lfence
lock xor byte ptr [r14 + rsi], dl 
and al, -99 
jmp .bb_0.1 
.bb_0.1:
xor al, -127 
and rsi, 0b1111111111111 # instrumentation
lfence
or byte ptr [r14 + rsi], 51 
cmp dl, al 
movzx ebx, dx 
and rdx, 0b1111111111111 # instrumentation
lfence
test qword ptr [r14 + rdx], rcx 
and rdi, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rdi], edi 
sub dil, 95 
and rcx, 0b1111111111111 # instrumentation
lfence
cmovnz di, word ptr [r14 + rcx] 
and rax, 0b1111111111000 # instrumentation
lfence
lock and word ptr [r14 + rax], 101 
and rdx, 0b1111111111000 # instrumentation
lfence
lock or word ptr [r14 + rdx], -21 
bt rdx, rsi 
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit 
.section .data.main
.test_case_exit:nop
