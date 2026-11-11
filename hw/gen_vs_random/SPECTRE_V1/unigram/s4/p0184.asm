.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rbx], 5
or dl, 41
setno bl
lea edi, qword ptr [rcx]
adc dl, al
jl .bb_0.1
jmp .exit_0
.bb_0.1:
add al, -95 # instrumentation
lea ax, qword ptr [rcx + rcx + 48]
inc ecx
or di, -85
and rbx, 0b1111111111111 # instrumentation
add dword ptr [r14 + rbx], ecx
and rdx, 0b1111111111000 # instrumentation
lock inc word ptr [r14 + rdx]
cdq
and rdx, 0b1111111111000 # instrumentation
lock inc word ptr [r14 + rdx]
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], al
add cl, -51 # instrumentation
cmovl edx, ecx
and dil, dl
or ebx, 0b1000000000000000000000000000000 # instrumentation
bsf esi, ebx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
