.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], cl
and rdx, 0b1111111111111 # instrumentation
xor rdi, qword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
bt qword ptr [r14 + rdx], rbx
and rbx, 0b1111111111111 # instrumentation
and rdi, 0b111 # instrumentation
bt qword ptr [r14 + rbx], rdi
or al, dl
and rbx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rbx], dil
and rsi, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rsi], eax
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
or rcx, qword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
cmovle di, word ptr [r14 + rsi]
and bl, dil
or rdx, -48
or al, 16
cmovnbe rcx, rsi
or rax, -1561934807
or al, dl
and si, -121
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
