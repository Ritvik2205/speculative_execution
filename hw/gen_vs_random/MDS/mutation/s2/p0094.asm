.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
xor cx, word ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
and di, 0b111 # instrumentation
btr word ptr [r14 + rcx], di
and cl, -63
cmovnbe dx, si
and rdi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdi], 630928397
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], eax
and rdx, 0b1111111111111 # instrumentation
cmovz edx, dword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], 0b1000000000000000000000000000000 # instrumentation
bsr ebx, dword ptr [r14 + rcx]
cmovnle rcx, rax
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], cl
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], bl
not al
btc rbx, rax
and rsi, 70
and al, dl
and dl, -7
btc bx, 179
or rax, -285849275
and rdi, 0b1111111111000 # instrumentation
lock not word ptr [r14 + rdi]
xor al, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
