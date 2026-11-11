.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
add byte ptr [r14 + rax], bl
and rdx, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rdx], bl
and rdi, 0b1111111111111 # instrumentation
test word ptr [r14 + rdi], 75
and rdx, 0b1111111111111 # instrumentation
cmovno ebx, dword ptr [r14 + rdx]
or ax, 0b1000 # instrumentation
and al, 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv ax
xor sil, dl
and rdx, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rdx], sil
jmp .bb_0.1
.bb_0.1:
setnbe sil
lea ebx, qword ptr [rdx]
add cl, 121 # instrumentation
cmovs eax, eax
or rcx, 1 # instrumentation
and rdx, rcx # instrumentation
shr rdx, 1 # instrumentation
div rcx
or bl, sil
sbb cl, cl
and rbx, 0b1111111111111 # instrumentation
neg dword ptr [r14 + rbx]
btr esi, eax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
