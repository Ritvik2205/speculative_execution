.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
movsx dx, byte ptr [r14 + rdx]
lea rdx, qword ptr [rdi + rcx]
and rax, 0b1111111111111 # instrumentation
mov esi, dword ptr [r14 + rax]
lea di, qword ptr [rdi + rax + 35]
lea esi, qword ptr [rbx]
add dl, 109 # instrumentation
cmovnb rsi, rax
and rax, 0b1111111111111 # instrumentation
cmovp rsi, qword ptr [r14 + rax]
adc edx, edx
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rdx], 4
add bl, 115 # instrumentation
setz sil
bts ecx, ebx
and rdi, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rdi], rbx
add bl, 104 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovnbe rbx, qword ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
movsx rdx, byte ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
imul rdx, qword ptr [r14 + rcx], 73
and rax, 0b1111111111111 # instrumentation
cmovs esi, dword ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
