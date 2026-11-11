.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test dl, cl
and rax, 0b1111111111111 # instrumentation
setnbe byte ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
cmovp rdx, qword ptr [r14 + rsi]
or al, -48
and rdi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdi], 630928397
and rdx, 0b1111111111000 # instrumentation
lock not byte ptr [r14 + rdx]
or cl, 100
xor cl, 122
and al, dl
btr rdx, 194
jmp .bb_0.1
.bb_0.1:
mov si, 37
and si, dx
and cl, bl
xor dl, al
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], 0b1000000000000000000000000000000 # instrumentation
bsr ecx, dword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
btr word ptr [r14 + rsi], 70
and al, -56
test al, -59
and rdi, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rdi], -16
and rdi, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rdi], ax
and rax, -1909598591
and al, -56
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
