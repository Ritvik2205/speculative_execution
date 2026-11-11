.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
movsx ecx, byte ptr [r14 + rsi]
lea eax, qword ptr [rbx]
and rdi, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rdi], sil
and rsi, 0b1111111111111 # instrumentation
imul byte ptr [r14 + rsi]
btr cx, bx
and rax, 0b1111111111111 # instrumentation
add edx, dword ptr [r14 + rax]
and rsi, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rsi], ax
dec dx
xor sil, cl
add bl, 115 # instrumentation
setz dl
and rdi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdi], 7
lea rcx, qword ptr [rcx + rdx]
cwde
setb cl
bt esi, eax
cmovno bx, bx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
