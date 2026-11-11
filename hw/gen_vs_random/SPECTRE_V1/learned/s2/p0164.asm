.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, 6 # instrumentation
adc rax, -384715932
lea ax, qword ptr [rdi + rsi + 53]
setno dl
and rsi, 0b1111111111111 # instrumentation
xor rdx, qword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
cmovnp ecx, dword ptr [r14 + rcx]
lea eax, qword ptr [rdi + rsi + 85]
and rdx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rdx], esi
and rbx, 0b1111111111111 # instrumentation
cmovs eax, dword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], eax
xor cl, -103
jmp .bb_0.1
.bb_0.1:
lea rdi, qword ptr [rcx]
adc rax, 25
or si, 0b1000000000000000 # instrumentation
bsr di, si
adc ax, ax
and rsi, 0b1111111111111 # instrumentation
and bx, 0b111 # instrumentation
bts word ptr [r14 + rsi], bx
and rdi, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rdi], ax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
