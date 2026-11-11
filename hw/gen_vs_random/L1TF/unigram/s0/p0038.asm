.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, 78 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovs di, word ptr [r14 + rbx]
mul rax
and rbx, 0b1111111111111 # instrumentation
inc byte ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
inc qword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rcx], dx
cmp rcx, rcx
and rbx, 0b1111111111111 # instrumentation
cmp eax, dword ptr [r14 + rbx]
add al, 39 # instrumentation
cmovnb di, cx
lea dx, qword ptr [rax + rbx + 71]
and rdx, 0b1111111111111 # instrumentation
mov dil, byte ptr [r14 + rdx]
and rcx, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rcx]
xor sil, sil
lea di, qword ptr [rax + rdi + 60]
or rcx, 35
sub dil, -39
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], 0b1000000000000000000000000000000 # instrumentation
bsr ebx, dword ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
