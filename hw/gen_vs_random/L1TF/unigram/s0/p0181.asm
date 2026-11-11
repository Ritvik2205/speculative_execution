.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea rbx, qword ptr [rbx + rcx]
btr dx, di
and rbx, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rbx], rdx
and rsi, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rsi], 354197880
and rsi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rsi], 0b1000 # instrumentation
and byte ptr [r14 + rsi], 0b11111000 # instrumentation
mov ax, 1 # instrumentation
idiv byte ptr [r14 + rsi]
and rdi, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rdi], 87
add al, -21 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovb ecx, dword ptr [r14 + rax]
cwde
bts cx, 176
add al, -80
and rbx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rbx], 0
and rbx, 0b1111111111111 # instrumentation
cmovnbe ax, word ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
add eax, dword ptr [r14 + rcx]
cmovb edx, esi
and rax, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rax], -105
and rdx, 0b1111111111000 # instrumentation
and eax, 0b111 # instrumentation
lock bts dword ptr [r14 + rdx], eax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
