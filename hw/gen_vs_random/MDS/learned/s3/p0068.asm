.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and cl, 95 # instrumentation
cmovns rdx, rdx
and rsi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rsi], 1 # instrumentation
and rdx, qword ptr [r14 + rsi] # instrumentation
shr rdx, 1 # instrumentation
div qword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rsi], 5
and rsi, 0b1111111111111 # instrumentation
and dl, byte ptr [r14 + rsi]
and rcx, 0b1111111111000 # instrumentation
and rdx, 0b111 # instrumentation
lock bts qword ptr [r14 + rcx], rdx
and rsi, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rsi], 14
setnl dl
cmovs edx, edx
or dl, cl
or cl, dil
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], sil
and rsi, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rsi], 3
and rcx, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rcx], 2
jmp .bb_0.1
.bb_0.1:
or al, -48
and al, -37
cmovp ax, di
cmovo rdx, rsi
or sil, -8
xor al, -28
and rdi, 0b1111111111111 # instrumentation
and dx, 0b111 # instrumentation
btr word ptr [r14 + rdi], dx
cmovz rbx, rdi
and rcx, 0b1111111111111 # instrumentation
cmovz dx, word ptr [r14 + rcx]
cmovnbe dx, di
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
