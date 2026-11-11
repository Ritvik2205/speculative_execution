.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or rsi, 58
and rsi, rax
btc si, si
test rax, 1214712583
not cl
and sil, -34 # instrumentation
cmovs rax, rsi
test cl, 101
and rdi, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rdi], 66
and rsi, rcx
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], sil
test al, cl
or cl, dl
and rdi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdi], 82
and rax, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rax], cx
xor cl, dil
and rcx, 0b1111111111111 # instrumentation
cmovnb esi, dword ptr [r14 + rcx]
and bl, 34 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovle eax, dword ptr [r14 + rbx]
test dl, dl
and rdi, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
bts qword ptr [r14 + rdi], rcx
and rdi, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rdi], cx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
