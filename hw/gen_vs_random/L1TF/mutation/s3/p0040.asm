.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dx, -51
and rbx, 0b1111111111111 # instrumentation
sbb cx, word ptr [r14 + rbx]
and rbx, 0b1111111111000 # instrumentation
lock neg byte ptr [r14 + rbx]
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], dl
and al, -99
jmp .bb_0.1
.bb_0.1:
xor al, -127
and rsi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rsi], 51
cmp dl, al
movzx ebx, dx
and rdx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdx], rcx
and rdi, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rdi], edi
sub dil, 95
and rcx, 0b1111111111111 # instrumentation
cmovnz di, word ptr [r14 + rcx]
and rax, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rax], 101
and rdx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rdx], -21
bt rdx, rsi
jmp .bb_0.2
.bb_0.2:
or ax, 31571
and rsi, 0b1111111111111 # instrumentation
xor ecx, dword ptr [r14 + rsi]
setp sil
and rsi, 0b1111111111111 # instrumentation
inc qword ptr [r14 + rsi]
and rdi, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rdi]
adc rax, -1877286258
lea edx, qword ptr [rcx + rdi + 62270]
setnle sil
and rdx, 0b1111111111111 # instrumentation
cmovle bx, word ptr [r14 + rdx]
and rbx, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rbx], -28
cmp dl, 64
or al, -87
and rsi, 0b1111111111111 # instrumentation
sbb rcx, qword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rdx], rcx
and rsi, 0b1111111111111 # instrumentation
bt word ptr [r14 + rsi], 0
and sil, 69
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
