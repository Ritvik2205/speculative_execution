.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or eax, 0b1000000000000000000000000000000 # instrumentation
bsf ebx, eax
and dil, dl
and bx, ax
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
and edi, dword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
cmovnbe rcx, qword ptr [r14 + rcx]
and cl, -109 # instrumentation
not rdx
test dl, dil
and al, 116 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovnbe rax, qword ptr [r14 + rsi]
cmovle ax, ax
and bl, -72 # instrumentation
and rsi, 0b1111111111111 # instrumentation
bts word ptr [r14 + rsi], 50
and rsi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rsi], -40
and rcx, 0b1111111111111 # instrumentation
xor dil, byte ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rdi], 0
cmovb rbx, rax
cmovb si, ax
bt rsi, rdi
or rcx, 0b1000000000000000000000000000000 # instrumentation
bsr rsi, rcx
and rdx, 0b1111111111111 # instrumentation
cmovb eax, dword ptr [r14 + rdx]
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], -13
and rax, 0b1111111111111 # instrumentation
cmovno rdx, qword ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
