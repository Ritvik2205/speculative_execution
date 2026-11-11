.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and al, sil
or ecx, 0b1000000000000000000000000000000 # instrumentation
bsr edi, ecx
test rdx, 21
and rbx, 0b1111111111111 # instrumentation
xor si, word ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
xor dil, byte ptr [r14 + rbx]
or cx, 39
and rax, 0b1111111111111 # instrumentation
or dl, byte ptr [r14 + rax]
test bl, -14
and rbx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rbx], -122
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], cl
bt di, dx
btr rdx, 44
and rdi, 0b1111111111111 # instrumentation
or ax, word ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
cmovnle rbx, qword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
test word ptr [r14 + rcx], 2908
and rax, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rax], dil
and rax, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rax], dil
btc rcx, 38
cmovle cx, dx
and bl, 56 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovnb dx, word ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
