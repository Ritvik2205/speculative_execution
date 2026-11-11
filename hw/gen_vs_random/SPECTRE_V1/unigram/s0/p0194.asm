.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, 56 # instrumentation
cmovns ecx, edx
movzx cx, sil
cmovno ecx, ebx
and rbx, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rbx], si
mov al, al
and rax, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rax], 30
xor rdx, 79
jnz .bb_0.1
jmp .exit_0
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
adc word ptr [r14 + rbx], 99
test rbx, 50
and rcx, 0b1111111111000 # instrumentation
and ecx, 0b111 # instrumentation
lock bts dword ptr [r14 + rcx], ecx
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], dl
and rdx, 0b1111111111000 # instrumentation
and rbx, 0b111 # instrumentation
lock bts qword ptr [r14 + rdx], rbx
add al, -92 # instrumentation
and rcx, 0b1111111111111 # instrumentation
adc sil, byte ptr [r14 + rcx]
movsx rcx, dil
or al, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
