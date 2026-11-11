.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
neg ecx
and rcx, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rcx]
setnle sil
setno dil
and rsi, 0b1111111111111 # instrumentation
and ecx, 0b111 # instrumentation
bts dword ptr [r14 + rsi], ecx
lea di, qword ptr [rdx + rax]
neg sil
adc rdi, 62
and rdx, 0b1111111111111 # instrumentation
or word ptr [r14 + rdx], 0b1000 # instrumentation
and byte ptr [r14 + rdx], 0b11111000 # instrumentation
and rdx, 0b1111111111111 # instrumentation
or ax, word ptr [r14 + rdx]
and sil, 110
and rdx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rdx], bl
and rbx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rbx], 4
and rdx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rdx], ecx
and rdi, 0b1111111111111 # instrumentation
sbb ecx, dword ptr [r14 + rdi]
not rdi
mul al
adc sil, 4
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
