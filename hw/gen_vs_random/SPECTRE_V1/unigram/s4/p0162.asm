.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
imul dl
and rdx, 0b1111111111111 # instrumentation
neg byte ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rax], 40
and rbx, 0b1111111111111 # instrumentation
sub word ptr [r14 + rbx], 69
and rbx, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rbx], 2
jp .bb_0.1
jmp .exit_0
.bb_0.1:
mul rbx
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], 97
and rdx, 0b1111111111111 # instrumentation
adc sil, byte ptr [r14 + rdx]
add al, -74 # instrumentation
and rdx, 0b1111111111111 # instrumentation
seto byte ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
dec word ptr [r14 + rcx]
lea rcx, qword ptr [rsi + rdx + 81]
sub sil, dl
lea edi, qword ptr [rcx + rcx + 96]
test bl, -8
adc cl, dl
and rsi, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rsi], 50
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
