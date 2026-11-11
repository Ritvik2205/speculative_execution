.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmp rsi, rdx
and al, dl
and rcx, 0b1111111111111 # instrumentation
cmovle dx, word ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
test word ptr [r14 + rcx], ax
and rdx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rdx], cl
add al, 22 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovbe dx, word ptr [r14 + rdx]
lea esi, qword ptr [rax]
jmp .bb_0.1
.bb_0.1:
lea rdi, qword ptr [rax + rax]
and rbx, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rbx], edi
and rax, 0b1111111111111 # instrumentation
adc qword ptr [r14 + rax], rsi
add al, -117 # instrumentation
and rsi, 0b1111111111111 # instrumentation
movsx rax, word ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
adc edi, dword ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
not dword ptr [r14 + rdx]
lea di, qword ptr [rdx + rdx + 91]
and rdi, 0b1111111111111 # instrumentation
cmovnp ebx, dword ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
cmovbe edi, dword ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
