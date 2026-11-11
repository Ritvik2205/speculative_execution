.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
dec di
sub rax, -1628299544
and rdx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rdx], 38
and bl, al
sub bl, al
mov cl, bl
and rsi, 0b1111111111111 # instrumentation
mov edi, dword ptr [r14 + rsi]
or cl, sil
cmovle rbx, rcx
and rbx, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
mov ebx, dword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
cmovnb edi, dword ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
