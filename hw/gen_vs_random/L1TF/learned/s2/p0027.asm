.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, 64 # instrumentation
cmovnl rsi, rcx
or di, 0b1000000000000000 # instrumentation
bsf si, di
and rdi, 0b1111111111111 # instrumentation
cmovp rdx, qword ptr [r14 + rdi]
and rax, 363226538
movzx rax, bl
movzx edi, dx
and rax, 0b1111111111111 # instrumentation
xor ecx, dword ptr [r14 + rax]
sbb di, 58
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rsi], ax
and rcx, 0b1111111111111 # instrumentation
cmovo ebx, dword ptr [r14 + rcx]
add rdx, rbx
and rdi, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rdi], esi
and rbx, 0b1111111111111 # instrumentation
xor rcx, qword ptr [r14 + rbx]
lea rsi, qword ptr [rsi]
and rax, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rax], al
and rax, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rax], 726281652
lea esi, qword ptr [rcx]
test ax, ax
setnbe dl
sub cl, 32
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
