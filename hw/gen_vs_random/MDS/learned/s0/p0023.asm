.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], sil
and rdi, 0b1111111111000 # instrumentation
and dx, 0b111 # instrumentation
lock btc word ptr [r14 + rdi], dx
xor al, 99
or cx, -42
jmp .bb_0.1
.bb_0.1:
jmp .bb_0.2
.bb_0.2:
and rdx, 0b1111111111111 # instrumentation
or edi, dword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
or cx, word ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
xor rdi, qword ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
or rsi, qword ptr [r14 + rbx]
xor al, -89
and rcx, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rcx]
jmp .bb_0.3
.bb_0.3:
xor al, sil
jmp .bb_0.4
.bb_0.4:
and rcx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rcx], 28
jmp .bb_0.5
.bb_0.5:
or ax, -23697
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
