.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test bl, -114
and rdx, 0b1111111111000 # instrumentation
and ax, 0b111 # instrumentation
lock bts word ptr [r14 + rdx], ax
and rdx, 0b1111111111111 # instrumentation
and di, word ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
cmovs rcx, qword ptr [r14 + rdi]
and dl, -73
and rax, 0b1111111111111 # instrumentation
cmovnl bx, word ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
xor ebx, dword ptr [r14 + rdi]
and rsi, 0b1111111111000 # instrumentation
lock btr word ptr [r14 + rsi], 0
and bl, 16 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovp rcx, qword ptr [r14 + rcx]
cmovp rdx, rcx
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111000 # instrumentation
lock btr word ptr [r14 + rax], 2
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], dl
and rcx, 0b1111111111111 # instrumentation
xor rsi, qword ptr [r14 + rcx]
and rcx, 0b1111111111000 # instrumentation
lock not word ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
cmovno bx, word ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
and cl, byte ptr [r14 + rbx]
and al, 82
and rdi, 0b1111111111111 # instrumentation
cmovnz ebx, dword ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
cmovo edx, dword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rbx], 0b1000000000000000000000000000000 # instrumentation
bsr rdi, qword ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
