.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
or byte ptr [r14 + rax], cl
and rcx, 0b1111111111111 # instrumentation
test word ptr [r14 + rcx], 2908
and rsi, 0b1111111111111 # instrumentation
cmovnb ebx, dword ptr [r14 + rsi]
btc rax, 110
and rdi, 0b1111111111111 # instrumentation
xor word ptr [r14 + rdi], bx
and rax, 0b1111111111111 # instrumentation
cmovb rbx, qword ptr [r14 + rax]
and rdx, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rdx]
xor sil, -15
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], dl
and rbx, 0b1111111111111 # instrumentation
cmovnbe eax, dword ptr [r14 + rbx]
bt rsi, rax
and rcx, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
bt qword ptr [r14 + rcx], rax
and rsi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rsi], 941195305
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], 44
and sil, sil
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], dl
cmovo rbx, rbx
or rdi, rbx
or al, 16
btc cx, si
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
