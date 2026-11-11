.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or eax, ecx
xor sil, dil
or bl, bl
and rdx, 0b1111111111111 # instrumentation
xor rsi, qword ptr [r14 + rdx]
or dl, sil
or cx, -42
or dl, 85
xor dl, -19
jmp .bb_0.1
.bb_0.1:
or eax, ecx
and rbx, 0b1111111111111 # instrumentation
btc word ptr [r14 + rbx], 2
and ecx, -104
and rcx, 0b1111111111111 # instrumentation
test word ptr [r14 + rcx], 2908
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], bl
and rax, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rax], 7
and rcx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rcx], -834948525
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
