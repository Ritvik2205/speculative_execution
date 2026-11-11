.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
btr di, ax
xor rdi, -9
xor eax, 984871847
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
and bl, byte ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rcx], rsi
and rax, 1886208862
test sil, -96
and rdi, 0b1111111111111 # instrumentation
cmovle ecx, dword ptr [r14 + rdi]
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], dl
or dl, al
or rcx, -17
and rbx, 0b1111111111111 # instrumentation
test word ptr [r14 + rbx], 74
xor al, cl
and rbx, 0b1111111111111 # instrumentation
test word ptr [r14 + rbx], 61
and rbx, 0b1111111111111 # instrumentation
test word ptr [r14 + rbx], 88
xor al, -4
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
