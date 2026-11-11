.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test al, sil
setnb cl
xchg rbx, rax
and rcx, 0b1111111111111 # instrumentation
cmovp di, word ptr [r14 + rcx]
and rsi, 0b1111111111000 # instrumentation
and ecx, 0b111 # instrumentation
lock btr dword ptr [r14 + rsi], ecx
xor sil, -33
and rcx, 0b1111111111111 # instrumentation
mov edi, dword ptr [r14 + rcx]
lea ebx, qword ptr [rdx + rdx + 46587]
and rdi, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rdi], -100
jl .bb_0.1
jmp .exit_0
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
mov dl, byte ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
bts qword ptr [r14 + rbx], 5
and rbx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rbx], eax
and rdi, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rdi], 59
or rbx, 0b1000000000000000000000000000000 # instrumentation
bsr rsi, rbx
and rdx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rdx], ebx
xor al, al
and rcx, 0b1111111111111 # instrumentation
cmovno rdi, qword ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
