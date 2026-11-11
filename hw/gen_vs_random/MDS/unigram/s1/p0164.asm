.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
cmovnz eax, dword ptr [r14 + rbx]
cmovl rsi, rax
and rdi, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rdi]
and rsi, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rsi], ebx
and rbx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rbx], esi
xor rdx, -59
xor bl, dil
and rsi, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rsi], 5
and rax, 0b1111111111111 # instrumentation
cmovnz rax, qword ptr [r14 + rax]
test cl, cl
and rdi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdi], 59
not rax
and rsi, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rsi], eax
and rdx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rdx], sil
and rax, 0b1111111111111 # instrumentation
cmovnz rax, qword ptr [r14 + rax]
and rdx, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rdx], 5
and al, dl
and rsi, 0b1111111111111 # instrumentation
xor rbx, qword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
or rbx, qword ptr [r14 + rbx]
or ebx, -15
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
