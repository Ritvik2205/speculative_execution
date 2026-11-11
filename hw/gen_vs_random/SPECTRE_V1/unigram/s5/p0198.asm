.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
sub dword ptr [r14 + rdi], esi
and rdi, 0b1111111111000 # instrumentation
xchg word ptr [r14 + rdi], cx
add ebx, -47
and rsi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rsi], 1 # instrumentation
add sil, -93 # instrumentation
setnb sil
and rbx, 0b1111111111111 # instrumentation
and eax, 0b111 # instrumentation
btr dword ptr [r14 + rbx], eax
and rbx, 0b1111111111111 # instrumentation
cmovns esi, dword ptr [r14 + rbx]
jnbe .bb_0.1
jmp .exit_0
.bb_0.1:
or ecx, eax
and rbx, 0b1111111111111 # instrumentation
cmovnb rdx, qword ptr [r14 + rbx]
add bl, 104 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovs eax, dword ptr [r14 + rdx]
cmovnbe rdx, rcx
and rdx, 0b1111111111111 # instrumentation
or word ptr [r14 + rdx], -122
lea rax, qword ptr [rbx + rdi + 33]
and rbx, 0b1111111111111 # instrumentation
movsx rsi, word ptr [r14 + rbx]
cmp sil, cl
adc rcx, 43
add dl, 117 # instrumentation
sbb rax, rcx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
