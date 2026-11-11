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
add ax, 8031
cmovs ax, si
or cl, -62
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
