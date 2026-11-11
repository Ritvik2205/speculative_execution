.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or rdi, -11
test eax, -409834435
and rdi, 0b1111111111111 # instrumentation
and ax, 0b111 # instrumentation
bts word ptr [r14 + rdi], ax
test edi, -1252846009
and rdi, 0b1111111111111 # instrumentation
cmovnl eax, dword ptr [r14 + rdi]
test al, bl
btc eax, 40
and rbx, 0b1111111111111 # instrumentation
and ecx, 0b111 # instrumentation
bts dword ptr [r14 + rbx], ecx
cmovnb rcx, rcx
and rsi, 0b1111111111111 # instrumentation
and qword ptr [r14 + rsi], 17
and rax, 0b1111111111000 # instrumentation
and rcx, 0b111 # instrumentation
lock btr qword ptr [r14 + rax], rcx
and rsi, 0b1111111111111 # instrumentation
and word ptr [r14 + rsi], dx
and sil, -87 # instrumentation
cmovo si, dx
or sil, -78
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], dl
and rdi, 0b1111111111111 # instrumentation
xor rcx, qword ptr [r14 + rdi]
and dl, -125 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovle rbx, qword ptr [r14 + rsi]
xor ecx, 8
and rdi, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rdi], 78
cmovnbe eax, eax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
