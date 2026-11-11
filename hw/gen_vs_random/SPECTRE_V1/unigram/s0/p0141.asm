.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
bt ecx, edi
sbb dl, al
xor ebx, 69
add dl, 9 # instrumentation
adc dl, sil
or dl, 41
jp .bb_0.1
jmp .exit_0
.bb_0.1:
and rax, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rax], 0
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], al
add bl, -61 # instrumentation
seto bl
neg rsi
add cl, 73 # instrumentation
add cl, -10 # instrumentation
lea ebx, qword ptr [rdx]
and rdx, 0b1111111111111 # instrumentation
cmovnp eax, dword ptr [r14 + rdx]
xchg dl, cl
or cl, al
setnl dl
and rsi, 0b1111111111111 # instrumentation
dec byte ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
cmovnbe ebx, dword ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
